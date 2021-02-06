.class public final synthetic Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$KPPqeIS8QIZneCCBkN31dB4SR6U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$KPPqeIS8QIZneCCBkN31dB4SR6U;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$KPPqeIS8QIZneCCBkN31dB4SR6U;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$triggerDynamicModeNotification$2$BatterySaverStateMachine()V

    return-void
.end method
