.class Lcom/android/server/audio/AudioService$RoleObserver;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleObserver"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mRm:Landroid/app/role/RoleManager;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 1128
    iput-object p1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1130
    return-void
.end method


# virtual methods
.method public getAssistantRoleHolder()Ljava/lang/String;
    .locals 3

    .line 1148
    const-string v0, ""

    .line 1149
    .local v0, "assitantPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    if-eqz v1, :cond_1

    .line 1150
    const-string v2, "android.app.role.ASSISTANT"

    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1151
    .local v1, "assistants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    move-object v0, v2

    .line 1153
    .end local v1    # "assistants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1142
    const-string v0, "android.app.role.ASSISTANT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$700(Lcom/android/server/audio/AudioService;Z)V

    .line 1145
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 1134
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$700(Lcom/android/server/audio/AudioService;Z)V

    .line 1138
    :cond_0
    return-void
.end method
