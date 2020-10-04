.class final Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
.super Ljava/lang/Object;
.source "OomAdjuster.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComputeOomAdjWindowCallback"
.end annotation


# instance fields
.field adj:I

.field app:Lcom/android/server/am/ProcessRecord;

.field appUid:I

.field foregroundActivities:Z

.field logUid:I

.field procState:I

.field processStateCurTop:I

.field schedGroup:I

.field final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/OomAdjuster$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/OomAdjuster;
    .param p2, "x1"    # Lcom/android/server/am/OomAdjuster$1;

    .line 839
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    return-void
.end method


# virtual methods
.method initialize(Lcom/android/server/am/ProcessRecord;IZIIIII)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "adj"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "procState"    # I
    .param p5, "schedGroup"    # I
    .param p6, "appUid"    # I
    .param p7, "logUid"    # I
    .param p8, "processStateCurTop"    # I

    .line 853
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    .line 854
    iput p2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 855
    iput-boolean p3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 856
    iput p4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 857
    iput p5, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 858
    iput p6, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    .line 859
    iput p7, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    .line 860
    iput p8, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    .line 861
    return-void
.end method

.method public onOtherActivity()V
    .locals 3

    .line 948
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    .line 949
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 950
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const-string v1, "cch-act"

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 951
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v1, :cond_1

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to cached activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_1
    return-void
.end method

.method public onPausedActivity()V
    .locals 5

    .line 891
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "pause-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_1

    .line 892
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 893
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 894
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_1

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to pause-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_1
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v3, :cond_3

    .line 899
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 900
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 901
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_3

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to pause-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_3
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 907
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 910
    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 912
    return-void
.end method

.method public onStoppingActivity(Z)V
    .locals 5
    .param p1, "finishing"    # Z

    .line 916
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "stop-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_1

    .line 917
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 918
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 919
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_1

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to stop-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_1
    if-nez p1, :cond_3

    .line 932
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v3, 0x10

    if-le v0, v3, :cond_3

    .line 933
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 934
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 935
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_3

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to stop-activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 942
    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 944
    return-void
.end method

.method public onVisibleActivity()V
    .locals 5

    .line 866
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "vis-activity"

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    .line 867
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 868
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 869
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_1

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to vis-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_1
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v3, :cond_3

    .line 874
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 875
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 876
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_3

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to vis-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_3
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 882
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 884
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 885
    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 887
    return-void
.end method
