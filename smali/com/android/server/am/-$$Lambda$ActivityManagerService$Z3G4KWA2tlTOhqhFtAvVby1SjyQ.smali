.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$Z3G4KWA2tlTOhqhFtAvVby1SjyQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Z3G4KWA2tlTOhqhFtAvVby1SjyQ;->f$0:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Z3G4KWA2tlTOhqhFtAvVby1SjyQ;->f$0:Lcom/android/server/am/ActivityManagerService;

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$systemReady$1$ActivityManagerService(Landroid/os/PowerSaveState;)V

    return-void
.end method
