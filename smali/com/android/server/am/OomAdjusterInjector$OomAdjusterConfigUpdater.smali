.class Lcom/android/server/am/OomAdjusterInjector$OomAdjusterConfigUpdater;
.super Ljava/lang/Object;
.source "OomAdjusterInjector.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjusterInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OomAdjusterConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OomAdjusterInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OomAdjusterInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OomAdjusterInjector;

    .line 334
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterInjector$OomAdjusterConfigUpdater;->this$0:Lcom/android/server/am/OomAdjusterInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 337
    invoke-static {p1}, Lcom/android/server/am/OomAdjusterInjector;->resolveConfig(Lorg/json/JSONArray;)V

    .line 338
    return-void
.end method
