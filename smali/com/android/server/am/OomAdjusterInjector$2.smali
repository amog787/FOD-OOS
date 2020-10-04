.class Lcom/android/server/am/OomAdjusterInjector$2;
.super Landroid/os/Handler;
.source "OomAdjusterInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OomAdjusterInjector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OomAdjusterInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OomAdjusterInjector;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OomAdjusterInjector;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 98
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterInjector$2;->this$0:Lcom/android/server/am/OomAdjusterInjector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterInjector$2;->this$0:Lcom/android/server/am/OomAdjusterInjector;

    invoke-static {v1}, Lcom/android/server/am/OomAdjusterInjector;->access$000(Lcom/android/server/am/OomAdjusterInjector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "OomAdjuster"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    .local v0, "adjGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OomAdjusterInjector;->resolveConfig(Lorg/json/JSONArray;)V

    .line 103
    return-void
.end method
