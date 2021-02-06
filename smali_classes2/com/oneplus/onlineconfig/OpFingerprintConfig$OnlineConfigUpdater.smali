.class Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "OpFingerprintConfig.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/onlineconfig/OpFingerprintConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/onlineconfig/OpFingerprintConfig;


# direct methods
.method private constructor <init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;Lcom/oneplus/onlineconfig/OpFingerprintConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/onlineconfig/OpFingerprintConfig;
    .param p2, "x1"    # Lcom/oneplus/onlineconfig/OpFingerprintConfig$1;

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 79
    const-string v0, "FingerprintConfig"

    const-string v1, "Receive online config update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-virtual {v0, p1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 81
    return-void
.end method
