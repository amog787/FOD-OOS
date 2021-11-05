.class public final synthetic Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/SnoozeHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$0:Lcom/android/server/notification/SnoozeHelper;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$3:I

    iput-wide p5, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$0:Lcom/android/server/notification/SnoozeHelper;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$3:I

    iget-wide v4, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;->f$4:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/SnoozeHelper;->lambda$scheduleRepostAtTime$2$SnoozeHelper(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method
