.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;->f$0:Lcom/android/server/connectivity/Tethering;

    return-void
.end method


# virtual methods
.method public final onUiEntitlementFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;->f$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->lambda$new$0$Tethering(I)V

    return-void
.end method
