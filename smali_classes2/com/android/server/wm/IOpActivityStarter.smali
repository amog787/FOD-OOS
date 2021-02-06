.class public interface abstract Lcom/android/server/wm/IOpActivityStarter;
.super Ljava/lang/Object;
.source "IOpActivityStarter.java"


# virtual methods
.method public abstract checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;ILjava/lang/String;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;)Z
.end method

.method public abstract getBackUserIdFromStoredCallingRelation(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getSourceIntent()Landroid/content/Intent;
.end method

.method public abstract maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;
.end method

.method public abstract resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract setSourceIntent(Landroid/content/Intent;)V
.end method

.method public abstract storeCallingRelation(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract toChooserActivity(Landroid/content/Intent;I)Landroid/content/Intent;
.end method

.method public abstract updateOutActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
.end method
