.class Lcom/android/server/people/data/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mDurationSeconds:I

.field private mTimestamp:J

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(JI)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "type"    # I

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    .line 228
    iput p3, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/Event$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/Event$1;

    .line 216
    invoke-direct {p0}, Lcom/android/server/people/data/Event$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/people/data/Event$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/people/data/Event$Builder;

    .line 216
    iget-wide v0, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/people/data/Event$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/Event$Builder;

    .line 216
    iget v0, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/people/data/Event$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/Event$Builder;

    .line 216
    iget v0, p0, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/people/data/Event$Builder;I)Lcom/android/server/people/data/Event$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/Event$Builder;
    .param p1, "x1"    # I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/people/data/Event$Builder;->setType(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/people/data/Event$Builder;J)Lcom/android/server/people/data/Event$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/Event$Builder;
    .param p1, "x1"    # J

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/Event$Builder;->setTimestamp(J)Lcom/android/server/people/data/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method private setTimestamp(J)Lcom/android/server/people/data/Event$Builder;
    .locals 0
    .param p1, "timestamp"    # J

    .line 237
    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    .line 238
    return-object p0
.end method

.method private setType(I)Lcom/android/server/people/data/Event$Builder;
    .locals 0
    .param p1, "type"    # I

    .line 242
    iput p1, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    .line 243
    return-object p0
.end method


# virtual methods
.method build()Lcom/android/server/people/data/Event;
    .locals 2

    .line 247
    new-instance v0, Lcom/android/server/people/data/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;Lcom/android/server/people/data/Event$1;)V

    return-object v0
.end method

.method setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;
    .locals 0
    .param p1, "durationSeconds"    # I

    .line 232
    iput p1, p0, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    .line 233
    return-object p0
.end method
