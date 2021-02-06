.class Lcom/oneplus/onlineconfig/OpUFSHPBConfig$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "OpUFSHPBConfig.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/onlineconfig/OpUFSHPBConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/onlineconfig/OpUFSHPBConfig;


# direct methods
.method private constructor <init>(Lcom/oneplus/onlineconfig/OpUFSHPBConfig;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpUFSHPBConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpUFSHPBConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/onlineconfig/OpUFSHPBConfig;Lcom/oneplus/onlineconfig/OpUFSHPBConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/onlineconfig/OpUFSHPBConfig;
    .param p2, "x1"    # Lcom/oneplus/onlineconfig/OpUFSHPBConfig$1;

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/onlineconfig/OpUFSHPBConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpUFSHPBConfig;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 42
    const-string v0, "OpUFSHPBConfig"

    const-string v1, "Receive online config update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpUFSHPBConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpUFSHPBConfig;

    invoke-virtual {v0, p1}, Lcom/oneplus/onlineconfig/OpUFSHPBConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 44
    return-void
.end method
