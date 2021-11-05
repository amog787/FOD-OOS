.class Lcom/oneplus/houston/apkserver/bridge/HoustonServer$1;
.super Ljava/lang/Object;
.source "HoustonServer.java"

# interfaces
.implements Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonServer;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;


# direct methods
.method constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 104
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$1;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$1;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    return-void
.end method
