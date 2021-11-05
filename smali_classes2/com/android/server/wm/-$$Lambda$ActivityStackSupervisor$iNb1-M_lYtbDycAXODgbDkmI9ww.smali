.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$iNb1-M_lYtbDycAXODgbDkmI9ww;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$iNb1-M_lYtbDycAXODgbDkmI9ww;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$iNb1-M_lYtbDycAXODgbDkmI9ww;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->lambda$activityIdleInternal$0$ActivityStackSupervisor()V

    return-void
.end method
