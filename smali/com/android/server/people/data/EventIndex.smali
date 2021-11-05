.class public Lcom/android/server/people/data/EventIndex;
.super Ljava/lang/Object;
.source "EventIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/EventIndex$Injector;,
        Lcom/android/server/people/data/EventIndex$TimeSlotType;
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/android/server/people/data/EventIndex;

.field private static final RETENTION_DAYS:I = 0x3f

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_SLOT_FACTORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Function<",
            "Ljava/lang/Long;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final TIME_SLOT_FOUR_HOURS:I = 0x1

.field private static final TIME_SLOT_ONE_DAY:I = 0x0

.field private static final TIME_SLOT_ONE_HOUR:I = 0x2

.field private static final TIME_SLOT_TWO_MINUTES:I = 0x3

.field private static final TIME_SLOT_TYPES_COUNT:I = 0x4


# instance fields
.field private final mEventBitmaps:[J

.field private final mInjector:Lcom/android/server/people/data/EventIndex$Injector;

.field private mLastUpdatedTime:J

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    const-class v0, Lcom/android/server/people/data/EventIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/EventIndex;->TAG:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    sput-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/function/Function;

    sget-object v1, Lcom/android/server/people/data/-$$Lambda$EventIndex$G8WkLHrQiIIwWFEZDn-UhnYOqD4;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventIndex$G8WkLHrQiIIwWFEZDn-UhnYOqD4;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/people/data/-$$Lambda$EventIndex$Nd5ot_vT3MfYlbajA1zcoqOlGW8;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventIndex$Nd5ot_vT3MfYlbajA1zcoqOlGW8;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/people/data/-$$Lambda$EventIndex$OSX9HM2LXKK0pNoaI_v3ROQ6Z58;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventIndex$OSX9HM2LXKK0pNoaI_v3ROQ6Z58;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/people/data/-$$Lambda$EventIndex$5vJ4iTv1E2na1FXUge8q9OUVsxo;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventIndex$5vJ4iTv1E2na1FXUge8q9OUVsxo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 97
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    .line 95
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 128
    new-instance v0, Lcom/android/server/people/data/EventIndex$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;)V

    .line 129
    return-void
.end method

.method constructor <init>(Lcom/android/server/people/data/EventIndex$Injector;)V
    .locals 3
    .param p1, "injector"    # Lcom/android/server/people/data/EventIndex$Injector;

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-virtual {p1}, Lcom/android/server/people/data/EventIndex$Injector;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    .line 138
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V
    .locals 1
    .param p1, "injector"    # Lcom/android/server/people/data/EventIndex$Injector;
    .param p2, "eventBitmaps"    # [J
    .param p3, "lastUpdatedTime"    # J

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    .line 142
    const/4 v0, 0x4

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 143
    iput-wide p3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 144
    return-void
.end method

.method constructor <init>(Lcom/android/server/people/data/EventIndex;)V
    .locals 4
    .param p1, "from"    # Lcom/android/server/people/data/EventIndex;

    .line 132
    iget-object v0, p1, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    iget-object v1, p1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    iget-wide v2, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    .line 133
    return-void
.end method

.method static combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;
    .locals 9
    .param p0, "lhs"    # Lcom/android/server/people/data/EventIndex;
    .param p1, "rhs"    # Lcom/android/server/people/data/EventIndex;

    .line 107
    iget-wide v0, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    iget-wide v2, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 108
    .local v0, "older":Lcom/android/server/people/data/EventIndex;
    :goto_0
    iget-wide v1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    iget-wide v3, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    move-object v1, p1

    .line 110
    .local v1, "younger":Lcom/android/server/people/data/EventIndex;
    :goto_1
    new-instance v2, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v2, v0}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex;)V

    .line 111
    .local v2, "combined":Lcom/android/server/people/data/EventIndex;
    iget-wide v3, v1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-direct {v2, v3, v4}, Lcom/android/server/people/data/EventIndex;->updateEventBitmaps(J)V

    .line 113
    const/4 v3, 0x0

    .local v3, "slotType":I
    :goto_2
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 114
    iget-object v4, v2, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v5, v4, v3

    iget-object v7, v1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v7, v7, v3

    or-long/2addr v5, v7

    aput-wide v5, v4, v3

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 116
    .end local v3    # "slotType":I
    :cond_2
    return-object v2
.end method

.method private static combineTimeSlotLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 362
    .local p0, "longerSlots":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    .local p1, "shorterSlots":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    const/4 v1, 0x0

    .line 364
    .local v1, "i":I
    const/4 v2, 0x0

    .line 365
    .local v2, "j":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 366
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 367
    .local v3, "longerSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 368
    .local v4, "shorterSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v1, v1, 0x1

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 372
    :cond_0
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 373
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 376
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v1, v1, 0x1

    .line 379
    .end local v3    # "longerSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v4    # "shorterSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :goto_1
    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 381
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 382
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 383
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static createFourHoursLongTimeSlot(J)Landroid/util/Range;
    .locals 5
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 402
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    .line 403
    .local v0, "hourOfDay":I
    nop

    .line 404
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v1

    rem-int/lit8 v2, v0, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 405
    .local v1, "beginTime":Ljava/time/LocalDateTime;
    invoke-static {v1}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method private static createOneDayLongTimeSlot(J)Landroid/util/Range;
    .locals 4
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 393
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 394
    .local v0, "beginTime":Ljava/time/LocalDateTime;
    invoke-static {v0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    return-object v1
.end method

.method private static createOneHourLongTimeSlot(J)Landroid/util/Range;
    .locals 4
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 414
    .local v0, "beginTime":Ljava/time/LocalDateTime;
    invoke-static {v0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    return-object v1
.end method

.method private static createTwoMinutesLongTimeSlot(J)Landroid/util/Range;
    .locals 5
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 422
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    .line 423
    .local v0, "minuteOfHour":I
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v1

    rem-int/lit8 v2, v0, 0x2

    int-to-long v2, v2

    .line 424
    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 425
    .local v1, "beginTime":Ljava/time/LocalDateTime;
    invoke-static {v1}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method private static diffTimeSlots(IJJ)I
    .locals 7
    .param p0, "timeSlotType"    # I
    .param p1, "fromTime"    # J
    .param p3, "toTime"    # J

    .line 324
    sget-object v0, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    .line 325
    .local v0, "timeSlotFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Long;Landroid/util/Range<Ljava/lang/Long;>;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 326
    .local v1, "fromSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 327
    .local v2, "toSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    move-result-wide v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    return v3
.end method

.method private getActiveTimeSlotsForType(I)Ljava/util/List;
    .locals 13
    .param p1, "timeSlotType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v0, v0, p1

    .line 336
    .local v0, "eventBitmap":J
    sget-object v2, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    iget-wide v3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 337
    .local v2, "latestTimeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 338
    .local v3, "startTime":J
    invoke-static {v2}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    move-result-wide v5

    .line 339
    .local v5, "duration":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v7, "timeSlots":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-eqz v10, :cond_2

    .line 341
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    .line 342
    .local v10, "trailingZeros":I
    if-lez v10, :cond_0

    .line 343
    int-to-long v11, v10

    mul-long/2addr v11, v5

    sub-long/2addr v3, v11

    .line 344
    ushr-long/2addr v0, v10

    .line 346
    :cond_0
    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 347
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    add-long v11, v3, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    sub-long/2addr v3, v5

    .line 349
    const/4 v8, 0x1

    ushr-long/2addr v0, v8

    .line 351
    .end local v10    # "trailingZeros":I
    :cond_1
    goto :goto_0

    .line 352
    :cond_2
    return-object v7
.end method

.method private static getDuration(Landroid/util/Range;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 316
    .local p0, "timeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic lambda$5vJ4iTv1E2na1FXUge8q9OUVsxo(J)Landroid/util/Range;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->createTwoMinutesLongTimeSlot(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$G8WkLHrQiIIwWFEZDn-UhnYOqD4(J)Landroid/util/Range;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->createOneDayLongTimeSlot(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Nd5ot_vT3MfYlbajA1zcoqOlGW8(J)Landroid/util/Range;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->createFourHoursLongTimeSlot(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$OSX9HM2LXKK0pNoaI_v3ROQ6Z58(J)Landroid/util/Range;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->createOneHourLongTimeSlot(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventIndex;
    .locals 7
    .param p0, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "bitmapIndex":I
    const/4 v1, 0x4

    new-array v1, v1, [J

    .line 287
    .local v1, "eventBitmaps":[J
    const-wide/16 v2, 0x0

    .line 288
    .local v2, "lastUpdated":J
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 289
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 299
    sget-object v4, Lcom/android/server/people/data/EventIndex;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read undefined field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_0
    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    .line 297
    goto :goto_0

    .line 291
    :cond_1
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "bitmapIndex":I
    .local v4, "bitmapIndex":I
    const-wide v5, 0x20300000001L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    aput-wide v5, v1, v0

    .line 293
    move v0, v4

    goto :goto_0

    .line 303
    .end local v4    # "bitmapIndex":I
    .restart local v0    # "bitmapIndex":I
    :cond_2
    new-instance v4, Lcom/android/server/people/data/EventIndex;

    new-instance v5, Lcom/android/server/people/data/EventIndex$Injector;

    invoke-direct {v5}, Lcom/android/server/people/data/EventIndex$Injector;-><init>()V

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    return-object v4
.end method

.method private static toEpochMilli(Ljava/time/LocalDateTime;)J
    .locals 2
    .param p0, "localDateTime"    # Ljava/time/LocalDateTime;

    .line 312
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method private static toLocalDateTime(J)Ljava/time/LocalDateTime;
    .locals 2
    .param p0, "epochMilli"    # J

    .line 307
    nop

    .line 308
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method private updateEventBitmaps(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    .line 269
    const/4 v0, 0x0

    .local v0, "slotType":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 270
    iget-wide v1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/people/data/EventIndex;->diffTimeSlots(IJJ)I

    move-result v1

    .line 271
    .local v1, "offset":I
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v3, v2, v0

    shl-long/2addr v3, v1

    aput-wide v3, v2, v0

    goto :goto_1

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 269
    .end local v1    # "offset":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "slotType":I
    :cond_1
    const/4 v0, 0x1

    .line 279
    .local v0, "bitsToClear":I
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    shl-long/2addr v3, v0

    aput-wide v3, v1, v2

    .line 280
    aget-wide v3, v1, v2

    ushr-long/2addr v3, v0

    aput-wide v3, v1, v2

    .line 281
    iput-wide p1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 282
    return-void
.end method


# virtual methods
.method addEvent(J)V
    .locals 10
    .param p1, "eventTime"    # J

    .line 204
    sget-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    if-eq v0, p0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventIndex$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 209
    .local v1, "currentTime":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/people/data/EventIndex;->updateEventBitmaps(J)V

    .line 210
    const/4 v3, 0x0

    .local v3, "slotType":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 211
    invoke-static {v3, p1, p2, v1, v2}, Lcom/android/server/people/data/EventIndex;->diffTimeSlots(IJJ)I

    move-result v4

    .line 212
    .local v4, "offset":I
    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    .line 213
    iget-object v5, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v6, v5, v3

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    or-long/2addr v6, v8

    aput-wide v6, v5, v3

    .line 210
    .end local v4    # "offset":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "currentTime":J
    .end local v3    # "slotType":I
    :cond_1
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 205
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EMPTY instance is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 244
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 245
    return v0

    .line 247
    :cond_0
    instance-of v1, p1, Lcom/android/server/people/data/EventIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 248
    return v2

    .line 250
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/people/data/EventIndex;

    .line 251
    .local v1, "other":Lcom/android/server/people/data/EventIndex;
    iget-wide v3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    iget-wide v5, v1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    iget-object v4, v1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 252
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 251
    :goto_0
    return v0
.end method

.method public getActiveTimeSlots()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "activeTimeSlots":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    const/4 v2, 0x0

    .local v2, "slotType":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 179
    nop

    .line 180
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlotsForType(I)Ljava/util/List;

    move-result-object v3

    .line 179
    invoke-static {v0, v3}, Lcom/android/server/people/data/EventIndex;->combineTimeSlotLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "slotType":I
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 184
    return-object v0

    .line 182
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getMostRecentActiveTimeSlot()Landroid/util/Range;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x3

    .local v1, "slotType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 155
    nop

    .line 153
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 157
    :cond_0
    sget-object v2, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    .line 158
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    iget-wide v3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 159
    .local v2, "lastTimeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    .line 160
    .local v3, "numberOfTrailingZeros":I
    invoke-static {v2}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    move-result-wide v4

    int-to-long v6, v3

    mul-long/2addr v4, v6

    .line 161
    .local v4, "offset":J
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 162
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 161
    invoke-static {v6, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    monitor-exit v0

    return-object v6

    .line 164
    .end local v1    # "slotType":I
    .end local v2    # "lastTimeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v3    # "numberOfTrailingZeros":I
    .end local v4    # "offset":J
    :cond_1
    monitor-exit v0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .line 257
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    const/4 v1, 0x0

    .local v1, "slotType":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 192
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "slotType":I
    :cond_1
    monitor-exit v0

    .line 196
    const/4 v0, 0x1

    return v0

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "EventIndex {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string/jumbo v1, "perDayEventBitmap=0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, ", perFourHoursEventBitmap=0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, ", perHourEventBitmap=0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ", perTwoMinutesEventBitmap=0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x3

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", lastUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-wide v1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 238
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventIndex$Injector;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/people/data/EventIndex;->updateEventBitmaps(J)V

    .line 222
    return-void
.end method

.method declared-synchronized writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 262
    .local v3, "bitmap":J
    const-wide v5, 0x20300000001L

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 261
    .end local v3    # "bitmap":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local p0    # "this":Lcom/android/server/people/data/EventIndex;
    :cond_0
    const-wide v0, 0x10300000002L

    iget-wide v2, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 260
    .end local p1    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
