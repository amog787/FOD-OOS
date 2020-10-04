.class Lcom/android/server/am/ColdStartInjector$ColdStartConfigUpdater;
.super Ljava/lang/Object;
.source "ColdStartInjector.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ColdStartInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColdStartConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ColdStartInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ColdStartInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ColdStartInjector;

    .line 265
    iput-object p1, p0, Lcom/android/server/am/ColdStartInjector$ColdStartConfigUpdater;->this$0:Lcom/android/server/am/ColdStartInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 268
    invoke-static {p1}, Lcom/android/server/am/ColdStartInjector;->access$500(Lorg/json/JSONArray;)V

    .line 269
    return-void
.end method
