.class public final synthetic Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;->f$0:Lcom/android/server/vr/VrManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;->f$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/VrManagerService;->lambda$onSwitchUser$0$VrManagerService()V

    return-void
.end method
