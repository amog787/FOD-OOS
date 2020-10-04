.class public final synthetic Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;->f$0:Lcom/android/server/UiModeManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;->f$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->lambda$onStart$1$UiModeManagerService()V

    return-void
.end method
