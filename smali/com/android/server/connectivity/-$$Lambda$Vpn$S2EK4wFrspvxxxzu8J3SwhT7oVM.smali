.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Vpn$S2EK4wFrspvxxxzu8J3SwhT7oVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$S2EK4wFrspvxxxzu8J3SwhT7oVM;->f$0:Lcom/android/server/connectivity/Vpn;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$S2EK4wFrspvxxxzu8J3SwhT7oVM;->f$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->lambda$enforceNotRestrictedUser$1$Vpn()V

    return-void
.end method
