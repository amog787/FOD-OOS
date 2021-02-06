.class Lcom/android/server/am/CachedAppOptimizer$1;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 159
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 162
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "use_compaction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$100(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_3

    .line 166
    :cond_0
    const-string v3, "compact_action_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "compact_action_2"

    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 169
    :cond_1
    const-string v3, "compact_throttle_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "compact_throttle_2"

    .line 170
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "compact_throttle_3"

    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "compact_throttle_4"

    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    const-string v3, "compact_statsd_sample_rate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$400(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_3

    .line 176
    :cond_3
    const-string v3, "freeze_statsd_sample_rate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$500(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_3

    .line 178
    :cond_4
    const-string v3, "compact_full_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$600(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_3

    .line 180
    :cond_5
    const-string v3, "compact_full_delta_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 181
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$700(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_3

    .line 182
    :cond_6
    const-string v3, "compact_proc_state_throttle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 183
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$800(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_3

    .line 173
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$300(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_3

    .line 168
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$200(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 185
    .end local v2    # "name":Ljava/lang/String;
    :cond_9
    :goto_3
    goto/16 :goto_0

    .line 186
    :cond_a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$900(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$900(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    .line 190
    :cond_b
    return-void

    .line 186
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
