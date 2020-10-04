.class public final synthetic Lcom/android/server/power/batterysaver/-$$Lambda$mQgroChNR1F7zC7uPirCwSx_zNg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/-$$Lambda$mQgroChNR1F7zC7uPirCwSx_zNg;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/-$$Lambda$mQgroChNR1F7zC7uPirCwSx_zNg;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerDynamicModeNotification()V

    return-void
.end method
