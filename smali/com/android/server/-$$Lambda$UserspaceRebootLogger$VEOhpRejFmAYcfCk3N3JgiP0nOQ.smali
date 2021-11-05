.class public final synthetic Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;->f$0:I

    iput-wide p2, p0, Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;->f$1:J

    iput p4, p0, Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;->f$0:I

    iget-wide v1, p0, Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;->f$1:J

    iget v3, p0, Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;->f$2:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/UserspaceRebootLogger;->lambda$logEventAsync$0(IJI)V

    return-void
.end method
