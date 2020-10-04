.class Lcom/android/server/am/ColdStartInjector$1;
.super Ljava/lang/Object;
.source "ColdStartInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ColdStartInjector;->checkNeedSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ColdStartInjector;

.field final synthetic val$countStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ColdStartInjector;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ColdStartInjector;

    .line 218
    iput-object p1, p0, Lcom/android/server/am/ColdStartInjector$1;->this$0:Lcom/android/server/am/ColdStartInjector;

    iput-object p2, p0, Lcom/android/server/am/ColdStartInjector$1;->val$countStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 220
    const-string v0, "ColdStart"

    const-string v1, "Start to report mdm"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector$1;->val$countStr:Ljava/lang/String;

    const-string v3, "cold_count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector$1;->this$0:Lcom/android/server/am/ColdStartInjector;

    invoke-static {v2}, Lcom/android/server/am/ColdStartInjector;->access$000(Lcom/android/server/am/ColdStartInjector;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cold_adj_count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "hot_count"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector$1;->this$0:Lcom/android/server/am/ColdStartInjector;

    invoke-static {v2}, Lcom/android/server/am/ColdStartInjector;->access$100(Lcom/android/server/am/ColdStartInjector;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "task_position_count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {}, Lcom/android/server/am/ColdStartInjector;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "report mdm data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appid"

    const-string v3, "NYNCG4I0TI"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector$1;->this$0:Lcom/android/server/am/ColdStartInjector;

    invoke-static {v3}, Lcom/android/server/am/ColdStartInjector;->access$300(Lcom/android/server/am/ColdStartInjector;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "cold_start"

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 238
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector$1;->this$0:Lcom/android/server/am/ColdStartInjector;

    invoke-static {v2}, Lcom/android/server/am/ColdStartInjector;->access$400(Lcom/android/server/am/ColdStartInjector;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ColdStartInjector$SingleData;

    .line 239
    .local v3, "sd":Lcom/android/server/am/ColdStartInjector$SingleData;
    invoke-virtual {v3}, Lcom/android/server/am/ColdStartInjector$SingleData;->cleanCount()V

    .line 240
    .end local v3    # "sd":Lcom/android/server/am/ColdStartInjector$SingleData;
    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method
