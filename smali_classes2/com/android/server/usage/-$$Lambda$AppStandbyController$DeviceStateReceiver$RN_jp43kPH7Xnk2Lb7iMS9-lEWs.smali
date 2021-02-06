.class public final synthetic Lcom/android/server/usage/-$$Lambda$AppStandbyController$DeviceStateReceiver$RN_jp43kPH7Xnk2Lb7iMS9-lEWs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/-$$Lambda$AppStandbyController$DeviceStateReceiver$RN_jp43kPH7Xnk2Lb7iMS9-lEWs;->f$0:Lcom/android/server/usage/AppStandbyController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/-$$Lambda$AppStandbyController$DeviceStateReceiver$RN_jp43kPH7Xnk2Lb7iMS9-lEWs;->f$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->lambda$onReceive$0(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method
