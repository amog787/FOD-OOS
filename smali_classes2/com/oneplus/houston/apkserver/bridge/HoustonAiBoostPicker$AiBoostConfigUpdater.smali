.class Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$AiBoostConfigUpdater;
.super Ljava/lang/Object;
.source "HoustonAiBoostPicker.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AiBoostConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    .line 73
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$AiBoostConfigUpdater;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 76
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$AiBoostConfigUpdater;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    invoke-static {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;Lorg/json/JSONArray;)V

    .line 77
    return-void
.end method
