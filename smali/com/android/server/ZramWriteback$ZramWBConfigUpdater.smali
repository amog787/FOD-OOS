.class Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;
.super Ljava/lang/Object;
.source "ZramWriteback.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZramWriteback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZramWBConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZramWriteback;


# direct methods
.method private constructor <init>(Lcom/android/server/ZramWriteback;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;->this$0:Lcom/android/server/ZramWriteback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ZramWriteback;Lcom/android/server/ZramWriteback$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ZramWriteback;
    .param p2, "x1"    # Lcom/android/server/ZramWriteback$1;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;-><init>(Lcom/android/server/ZramWriteback;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 102
    invoke-static {}, Lcom/android/server/ZramWriteback;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;->this$0:Lcom/android/server/ZramWriteback;

    invoke-static {v1, p1}, Lcom/android/server/ZramWriteback;->access$100(Lcom/android/server/ZramWriteback;Lorg/json/JSONArray;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;->this$0:Lcom/android/server/ZramWriteback;

    invoke-static {}, Lcom/android/server/ZramWriteback;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/ZramWriteback;->access$300()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/ZramWriteback;->access$400(Lcom/android/server/ZramWriteback;Landroid/content/Context;I)V

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {}, Lcom/android/server/ZramWriteback;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
