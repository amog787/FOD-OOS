.class public final synthetic Lcom/android/server/location/-$$Lambda$GeofenceManager$An30EDYyFFaKfyzgt2iEJPV1IAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/location/-$$Lambda$GeofenceManager$An30EDYyFFaKfyzgt2iEJPV1IAg;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/-$$Lambda$GeofenceManager$An30EDYyFFaKfyzgt2iEJPV1IAg;->f$0:J

    check-cast p1, Lcom/android/server/location/GeofenceState;

    invoke-static {v0, v1, p1}, Lcom/android/server/location/GeofenceManager;->lambda$removeExpiredFencesLocked$1(JLcom/android/server/location/GeofenceState;)Z

    move-result p1

    return p1
.end method
