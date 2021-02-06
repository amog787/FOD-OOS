.class Lcom/android/server/am/ActivityManagerService$ProfileData;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfileData"
.end annotation


# instance fields
.field private mProfileApp:Ljava/lang/String;

.field private mProfileProc:Lcom/android/server/am/ProcessRecord;

.field private mProfilerInfo:Landroid/app/ProfilerInfo;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 1597
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 1599
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1600
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-void
.end method


# virtual methods
.method getProfileApp()Ljava/lang/String;
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileApp:Ljava/lang/String;

    return-object v0
.end method

.method getProfileProc()Lcom/android/server/am/ProcessRecord;
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method getProfilerInfo()Landroid/app/ProfilerInfo;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-object v0
.end method

.method setProfileApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileApp"    # Ljava/lang/String;

    .line 1603
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 1604
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileApp(Ljava/lang/String;)V

    .line 1607
    :cond_0
    return-void
.end method

.method setProfileProc(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "profileProc"    # Lcom/android/server/am/ProcessRecord;

    .line 1614
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1615
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1617
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1616
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileProc(Lcom/android/server/wm/WindowProcessController;)V

    .line 1619
    :cond_1
    return-void
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)V
    .locals 1
    .param p1, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1626
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1627
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProfileData;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 1630
    :cond_0
    return-void
.end method
