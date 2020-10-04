.class Lcom/android/server/wm/RunningTasks;
.super Ljava/lang/Object;
.source "RunningTasks.java"


# static fields
.field private static final LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTmpSortedSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpStackTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RunningTasks$B8bQN-i7MO0XIePhmkVnejRGNp0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RunningTasks$B8bQN-i7MO0XIePhmkVnejRGNp0;

    sput-object v0, Lcom/android/server/wm/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/server/wm/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private createRunningTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 80
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 81
    .local v0, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 83
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 84
    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)I
    .locals 4
    .param p0, "o1"    # Lcom/android/server/wm/TaskRecord;
    .param p1, "o2"    # Lcom/android/server/wm/TaskRecord;

    .line 36
    iget-wide v0, p1, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    iget-wide v2, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method


# virtual methods
.method getTasks(ILjava/util/List;IILjava/util/ArrayList;IZ)V
    .locals 13
    .param p1, "maxNum"    # I
    .param p3, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p6, "callingUid"    # I
    .param p7, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityDisplay;",
            ">;IZ)V"
        }
    .end annotation

    .line 45
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local p5, "activityDisplays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityDisplay;>;"
    move-object v0, p0

    if-gtz p1, :cond_0

    .line 46
    return-void

    .line 50
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 51
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 52
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 53
    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 54
    .local v4, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "stackNdx":I
    :goto_1
    if-ltz v5, :cond_1

    .line 55
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 56
    .local v12, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v6, v0, Lcom/android/server/wm/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    move-object v6, v12

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->getRunningTasks(Ljava/util/List;IIIZ)V

    .line 59
    iget-object v6, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 54
    .end local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 52
    .end local v4    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5    # "stackNdx":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v3, p5

    .line 64
    .end local v2    # "displayNdx":I
    iget-object v2, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, p1

    .line 65
    .end local p1    # "maxNum":I
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/TaskRecord;>;"
    .local v4, "maxNum":I
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 66
    if-nez v4, :cond_3

    .line 67
    move-object v7, p2

    goto :goto_3

    .line 70
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 71
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    invoke-direct {p0, v5}, Lcom/android/server/wm/RunningTasks;->createRunningTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    move-object v7, p2

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    nop

    .end local v5    # "task":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v4, v4, -0x1

    .line 73
    goto :goto_2

    .line 65
    :cond_4
    move-object v7, p2

    .line 74
    :goto_3
    return-void
.end method
