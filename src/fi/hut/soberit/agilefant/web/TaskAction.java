package fi.hut.soberit.agilefant.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import fi.hut.soberit.agilefant.annotations.PrefetchId;
import fi.hut.soberit.agilefant.business.TaskBusiness;
import fi.hut.soberit.agilefant.business.TransferObjectBusiness;
import fi.hut.soberit.agilefant.model.Task;
import fi.hut.soberit.agilefant.model.User;

@Component("taskAction")
@Scope("prototype")
public class TaskAction extends ActionSupport implements Prefetching, CRUDAction {

    private static final long serialVersionUID = 7699657599039468223L;
    
    // Services
    @Autowired
    private TaskBusiness taskBusiness;
    
    @Autowired
    private TransferObjectBusiness transferObjectBusiness;
    
    // Helper fields
    private Task task;
    @PrefetchId
    private int taskId;
    
    private int rankUnderId;
    
    private Integer iterationId;
    private Integer storyId;
    private boolean    responsiblesChanged = false;
    public void setResponsiblesChanged(boolean responsiblesChanged) {
        this.responsiblesChanged = responsiblesChanged;
    }

    private List<User> newResponsibles = new ArrayList<User>();

    // CRUD
    public String create() {
        setTask(new Task());
        return Action.SUCCESS;
    }
    
    public String store() {
        if (responsiblesChanged) {
            task.setResponsibles(newResponsibles);
        }
        
        task = taskBusiness.storeTask(task, iterationId, storyId);
        populateJsonData();
        return Action.SUCCESS;
    }
    
    public String retrieve() {
        task = taskBusiness.retrieve(taskId);
        populateJsonData();
        return Action.SUCCESS;
    }
    
    public String delete() {
        task = taskBusiness.retrieve(taskId);
        taskBusiness.delete(task.getId());
        return Action.SUCCESS;
    }
    
    // OTHER FUNCTIONS
    
    public String move() {
        task = taskBusiness.retrieve(taskId);
        task = taskBusiness.move(task, iterationId, storyId);
        populateJsonData();
        return Action.SUCCESS;
    }
    
    public String resetOriginalEstimate() {
        task = taskBusiness.retrieve(taskId);
        task = taskBusiness.resetOriginalEstimate(taskId);
        populateJsonData();
        return Action.SUCCESS;
    }
    
    public String rankUnder() {
        task = taskBusiness.retrieve(taskId);
        Task rankUnder = taskBusiness.retrieveIfExists(rankUnderId);
        
        task = taskBusiness.rankAndMove(task, rankUnder, storyId, iterationId);
        
        return Action.SUCCESS;
    }
    
    public String deleteTaskForm() {
        task = taskBusiness.retrieve(taskId);
        return Action.SUCCESS;
    }
    
    private void populateJsonData() {
        task = transferObjectBusiness.constructTaskTO(task);
    }
        
    // Prefetching
    public void initializePrefetchedData(int objectId) {
        task = taskBusiness.retrieve(objectId);
    }
    
      
    // AUTOGENERATED    
    public void setTask(Task task) {
        this.task = task;
    }

    public Task getTask() {
        return task;
    }
    
    public void setTaskBusiness(TaskBusiness taskBusiness) {
        this.taskBusiness = taskBusiness;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public void setTransferObjectBusiness(
            TransferObjectBusiness transferObjectBusiness) {
        this.transferObjectBusiness = transferObjectBusiness;
    }

    public void setIterationId(Integer iterationId) {
        this.iterationId = iterationId;
    }

    public void setStoryId(Integer storyId) {
        this.storyId = storyId;
    }
    
    public List<User> getNewResponsibles() {
        return this.newResponsibles;
    }

    public void setNewResponsibles(List<User> newResponsibles) {
        this.newResponsibles = new ArrayList<User>(newResponsibles);
    }

    public void setRankUnderId(int rankUnderId) {
        this.rankUnderId = rankUnderId;
    }
}
