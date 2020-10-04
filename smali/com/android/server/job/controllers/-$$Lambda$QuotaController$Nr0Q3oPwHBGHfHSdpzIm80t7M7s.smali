.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$Nr0Q3oPwHBGHfHSdpzIm80t7M7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$Nr0Q3oPwHBGHfHSdpzIm80t7M7s;->f$0:Lcom/android/server/job/controllers/QuotaController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$Nr0Q3oPwHBGHfHSdpzIm80t7M7s;->f$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->lambda$onConstantsUpdatedLocked$0$QuotaController()V

    return-void
.end method
