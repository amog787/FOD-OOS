.class Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundModelStat"
.end annotation


# instance fields
.field mIsStarted:Z

.field mLastStartTimestampMsec:J

.field mLastStopTimestampMsec:J

.field mStartCount:J

.field mTotalTimeMsec:J

.field final synthetic this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;)V
    .locals 2

    .line 114
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    .line 116
    iput-wide v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 117
    iput-wide v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 118
    iput-wide v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    .line 119
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    .line 120
    return-void
.end method
