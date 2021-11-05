.class final Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppRequestObserver"
.end annotation


# instance fields
.field private mAppRequestedModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 1097
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 1099
    return-void
.end method

.method private findModeByIdLocked(II)Landroid/view/Display$Mode;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 1134
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1135
    return-object v1

    .line 1137
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1138
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 1139
    return-object v4

    .line 1137
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1142
    :cond_2
    return-object v1
.end method

.method private setAppRequestedModeLocked(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1108
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object v0

    .line 1109
    .local v0, "requestedMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    return-void

    .line 1115
    :cond_0
    if-eqz v0, :cond_1

    .line 1116
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1117
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 1118
    .local v1, "refreshRate":F
    invoke-static {v1, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    .line 1119
    .local v2, "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    .line 1120
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    .line 1119
    invoke-static {v3, v4}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 1121
    .local v1, "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_0

    .line 1122
    .end local v1    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v2    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1123
    const/4 v2, 0x0

    .line 1124
    .restart local v2    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/4 v1, 0x0

    .line 1127
    .restart local v1    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x3

    invoke-static {v3, p1, v4, v2}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1128
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x4

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1129
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1146
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    const-string v0, "    mAppRequestedModeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1150
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display$Mode;

    .line 1151
    .local v2, "mode":Landroid/view/Display$Mode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    .end local v1    # "id":I
    .end local v2    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setAppRequestedMode(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1102
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1103
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(II)V

    .line 1104
    monitor-exit v0

    .line 1105
    return-void

    .line 1104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
