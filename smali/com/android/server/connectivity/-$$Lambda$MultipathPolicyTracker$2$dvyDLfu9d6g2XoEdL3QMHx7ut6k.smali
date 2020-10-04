.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$MultipathPolicyTracker$2$dvyDLfu9d6g2XoEdL3QMHx7ut6k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$MultipathPolicyTracker$2$dvyDLfu9d6g2XoEdL3QMHx7ut6k;->f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$MultipathPolicyTracker$2$dvyDLfu9d6g2XoEdL3QMHx7ut6k;->f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$2;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->lambda$onMeteredIfacesChanged$0$MultipathPolicyTracker$2()V

    return-void
.end method
