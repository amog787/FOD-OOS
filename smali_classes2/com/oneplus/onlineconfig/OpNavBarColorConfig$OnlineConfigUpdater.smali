.class Lcom/oneplus/onlineconfig/OpNavBarColorConfig$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "OpNavBarColorConfig.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/onlineconfig/OpNavBarColorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/onlineconfig/OpNavBarColorConfig;


# direct methods
.method private constructor <init>(Lcom/oneplus/onlineconfig/OpNavBarColorConfig;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpNavBarColorConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/onlineconfig/OpNavBarColorConfig;Lcom/oneplus/onlineconfig/OpNavBarColorConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/onlineconfig/OpNavBarColorConfig;
    .param p2, "x1"    # Lcom/oneplus/onlineconfig/OpNavBarColorConfig$1;

    .line 94
    invoke-direct {p0, p1}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpNavBarColorConfig;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 97
    const-string v0, "OpNavBarColorConfig"

    const-string v1, "Receive online config update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpNavBarColorConfig;

    invoke-virtual {v0, p1}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 99
    return-void
.end method
