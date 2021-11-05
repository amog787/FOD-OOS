.class Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;
.super Ljava/lang/Object;
.source "HoustonServer.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoustonGlobalConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;


# direct methods
.method constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 376
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 379
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$500(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Lorg/json/JSONArray;)V

    .line 380
    return-void
.end method
