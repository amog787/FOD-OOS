.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[F

.field public final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;->f$1:[F

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;->f$2:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;->f$1:[F

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;->f$2:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->lambda$new$0$ActivityRecord([F[F)V

    return-void
.end method
