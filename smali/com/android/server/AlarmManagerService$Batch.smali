.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field flags:I

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 781
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 782
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 783
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 784
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 785
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v0, v1, :cond_0

    .line 787
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/AlarmManagerService;->access$402(Lcom/android/server/AlarmManagerService;J)J

    .line 789
    :cond_0
    return-void
.end method

.method static synthetic lambda$remove$0(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 838
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 8
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 804
    const/4 v0, 0x0

    .line 806
    .local v0, "newStart":Z
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 807
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 808
    rsub-int/lit8 v2, v1, 0x0

    add-int/lit8 v1, v2, -0x1

    .line 810
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 811
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v2, v3, :cond_1

    .line 812
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$402(Lcom/android/server/AlarmManagerService;J)J

    .line 814
    :cond_1
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    const-string v3, "AlarmManager"

    if-eqz v2, :cond_2

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_2
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 818
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 819
    const/4 v0, 0x1

    .line 821
    :cond_3
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    .line 822
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 824
    :cond_4
    iget v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 826
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_5

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    => now "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_5
    return v0
.end method

.method canHold(JJ)Z
    .locals 2
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .line 800
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 1
    .param p1, "index"    # I

    .line 796
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 882
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 883
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 884
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 885
    const/4 v3, 0x1

    return v3

    .line 882
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 888
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method hasWakeups()Z
    .locals 5

    .line 892
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 893
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 894
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 896
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 897
    return v4

    .line 893
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method remove(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 2
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 838
    new-instance v0, Lcom/android/server/-$$Lambda$AlarmManagerService$Batch$Xltkj5RTKUMuFVeuavpuY7-Ogzc;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$Batch$Xltkj5RTKUMuFVeuavpuY7-Ogzc;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v0

    return v0
.end method

.method remove(Ljava/util/function/Predicate;Z)Z
    .locals 11
    .param p2, "reOrdering"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;Z)Z"
        }
    .end annotation

    .line 842
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v0, 0x0

    .line 843
    .local v0, "didRemove":Z
    const-wide/16 v1, 0x0

    .line 844
    .local v1, "newStart":J
    const-wide v3, 0x7fffffffffffffffL

    .line 845
    .local v3, "newEnd":J
    const/4 v5, 0x0

    .line 846
    .local v5, "newFlags":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 847
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 848
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 849
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 850
    const/4 v8, 0x1

    if-nez p2, :cond_0

    .line 851
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    iget v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v9, v10, v8}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;II)V

    .line 853
    :cond_0
    const/4 v0, 0x1

    .line 854
    iget-object v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v9, :cond_1

    .line 855
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v9, v8}, Lcom/android/server/AlarmManagerService;->access$702(Lcom/android/server/AlarmManagerService;Z)Z

    .line 857
    :cond_1
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v8, v9, :cond_5

    .line 858
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/AlarmManagerService;->access$802(Lcom/android/server/AlarmManagerService;J)J

    goto :goto_1

    .line 861
    :cond_2
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v1

    if-lez v8, :cond_3

    .line 862
    iget-wide v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 864
    :cond_3
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v3

    if-gez v8, :cond_4

    .line 865
    iget-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 867
    :cond_4
    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v5, v8

    .line 868
    add-int/lit8 v6, v6, 0x1

    .line 870
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    :goto_1
    goto :goto_0

    .line 871
    .end local v6    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    .line 873
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 874
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 875
    iput v5, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 877
    :cond_7
    return v0
.end method

.method size()I
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 906
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 908
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 909
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 910
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    if-eqz v1, :cond_0

    .line 911
    const-string v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "nowElapsed"    # J
    .param p6, "nowRTC"    # J

    .line 920
    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 922
    .local v10, "token":J
    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    const-wide v3, 0x10300000001L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 923
    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    const-wide v3, 0x10300000002L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 924
    iget v1, v0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 925
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/AlarmManagerService$Alarm;

    .line 926
    .local v13, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v3, 0x20b00000004L

    move-object v1, v13

    move-object v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 927
    .end local v13    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_0

    .line 929
    :cond_0
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 930
    return-void
.end method
