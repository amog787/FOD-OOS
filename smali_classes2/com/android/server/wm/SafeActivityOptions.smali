.class public Lcom/android/server/wm/SafeActivityOptions;
.super Ljava/lang/Object;
.source "SafeActivityOptions.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mCallerOptions:Landroid/app/ActivityOptions;

.field private final mOriginalCallingPid:I

.field private final mOriginalCallingUid:I

.field private final mOriginalOptions:Landroid/app/ActivityOptions;

.field private mRealCallingPid:I

.field private mRealCallingUid:I


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 82
    return-void
.end method

.method private abort()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    .line 159
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 161
    :cond_1
    return-void
.end method

.method static abort(Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 0
    .param p0, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 164
    if-eqz p0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/server/wm/SafeActivityOptions;->abort()V

    .line 167
    :cond_0
    return-void
.end method

.method private checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p4, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I

    .line 193
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    const/4 v6, -0x1

    const-string v7, "ActivityTaskManager"

    const-string v8, ", uid="

    const-string v9, " (pid="

    const-string v10, " from "

    const-string v11, "Permission Denial: starting "

    if-eq v5, v6, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 194
    invoke-virtual {v5, v4}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 195
    const-string v5, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-static {v5, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 197
    .local v5, "startInTaskPerm":I
    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with launchTaskId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "msg":Ljava/lang/String;
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    .end local v5    # "startInTaskPerm":I
    .end local v6    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    .line 209
    .local v5, "launchDisplayId":I
    if-eqz v0, :cond_3

    if-eq v5, v6, :cond_3

    .line 210
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 212
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with launchDisplayId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .restart local v6    # "msg":Ljava/lang/String;
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 220
    .end local v6    # "msg":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v6

    .line 221
    .local v6, "lockTaskMode":Z
    if-eqz v0, :cond_5

    if-eqz v6, :cond_5

    iget-object v12, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 222
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v12

    .line 223
    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 222
    invoke-virtual {v12, v13, v14}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    .line 224
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with lockTaskMode=true"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "msg":Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    .end local v8    # "msg":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v12

    .line 233
    .local v12, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v12, :cond_7

    iget-object v13, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v13, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-static {v13, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v13

    if-nez v13, :cond_6

    goto :goto_3

    .line 236
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with remoteAnimationAdapter"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    .restart local v8    # "msg":Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 242
    .end local v8    # "msg":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;
    .locals 2
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 66
    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0
.end method

.method private getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 245
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "(no intent)"

    :goto_0
    return-object v0
.end method

.method private setCallingPidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;I)V
    .locals 3
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "callingPid"    # I

    .line 136
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 137
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 141
    const-string v1, "ActivityTaskManager"

    const-string v2, "Safe activity options constructed after clearing calling id"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 144
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/RemoteAnimationAdapter;->setCallingPid(I)V

    .line 145
    return-void
.end method


# virtual methods
.method getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p4, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 122
    iget-object v5, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_0

    .line 123
    iget v6, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;I)V

    .line 127
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v7, :cond_1

    .line 128
    iget v8, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v9, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;I)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 101
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 3
    .param p1, "options1"    # Landroid/app/ActivityOptions;
    .param p2, "options2"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 176
    if-nez p1, :cond_0

    .line 177
    return-object p2

    .line 179
    :cond_0
    if-nez p2, :cond_1

    .line 180
    return-object p1

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, "b1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 184
    .local v1, "b2":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 185
    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    return-object v2
.end method

.method popAppVerificationBundle()Landroid/os/Bundle;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setCallerOptions(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 93
    return-void
.end method
