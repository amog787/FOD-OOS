.class public Lcom/android/server/people/data/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/Event$Builder;,
        Lcom/android/server/people/data/Event$EventType;
    }
.end annotation


# static fields
.field public static final ALL_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CALL_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARE_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_CALL_INCOMING:I = 0xb

.field public static final TYPE_CALL_MISSED:I = 0xc

.field public static final TYPE_CALL_OUTGOING:I = 0xa

.field public static final TYPE_IN_APP_CONVERSATION:I = 0xd

.field public static final TYPE_NOTIFICATION_OPENED:I = 0x3

.field public static final TYPE_NOTIFICATION_POSTED:I = 0x2

.field public static final TYPE_SHARE_IMAGE:I = 0x5

.field public static final TYPE_SHARE_OTHER:I = 0x7

.field public static final TYPE_SHARE_TEXT:I = 0x4

.field public static final TYPE_SHARE_VIDEO:I = 0x6

.field public static final TYPE_SHORTCUT_INVOCATION:I = 0x1

.field public static final TYPE_SMS_INCOMING:I = 0x9

.field public static final TYPE_SMS_OUTGOING:I = 0x8


# instance fields
.field private final mDurationSeconds:I

.field private final mTimestamp:J

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lcom/android/server/people/data/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/Event;->TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/people/data/Event;->NOTIFICATION_EVENT_TYPES:Ljava/util/Set;

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/people/data/Event;->SMS_EVENT_TYPES:Ljava/util/Set;

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/people/data/Event;->CALL_EVENT_TYPES:Ljava/util/Set;

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    .line 91
    sget-object v0, Lcom/android/server/people/data/Event;->NOTIFICATION_EVENT_TYPES:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/server/people/data/Event;->NOTIFICATION_EVENT_TYPES:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/server/people/data/Event;->SMS_EVENT_TYPES:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/server/people/data/Event;->SMS_EVENT_TYPES:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/server/people/data/Event;->CALL_EVENT_TYPES:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/server/people/data/Event;->CALL_EVENT_TYPES:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/server/people/data/Event;->CALL_EVENT_TYPES:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/android/server/people/data/Event;->NOTIFICATION_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    sget-object v0, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 110
    sget-object v0, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/android/server/people/data/Event;->SMS_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    sget-object v0, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/android/server/people/data/Event;->CALL_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 112
    return-void
.end method

.method constructor <init>(JI)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "type"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-wide p1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 122
    iput p3, p0, Lcom/android/server/people/data/Event;->mType:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    .line 124
    return-void
.end method

.method private constructor <init>(Lcom/android/server/people/data/Event$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/server/people/data/Event$Builder;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->access$000(Lcom/android/server/people/data/Event$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 128
    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->access$100(Lcom/android/server/people/data/Event$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/Event;->mType:I

    .line 129
    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->access$200(Lcom/android/server/people/data/Event$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/Event$Builder;Lcom/android/server/people/data/Event$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/Event$Builder;
    .param p2, "x1"    # Lcom/android/server/people/data/Event$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;)V

    return-void
.end method

.method static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/Event;
    .locals 4
    .param p0, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/android/server/people/data/Event$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/people/data/Event$Builder;-><init>(Lcom/android/server/people/data/Event$1;)V

    .line 164
    .local v0, "builder":Lcom/android/server/people/data/Event$Builder;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 165
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 176
    sget-object v1, Lcom/android/server/people/data/Event;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read undefined field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_0
    const-wide v1, 0x10500000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    .line 174
    goto :goto_0

    .line 170
    :cond_1
    const-wide v1, 0x10300000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/people/data/Event$Builder;->access$500(Lcom/android/server/people/data/Event$Builder;J)Lcom/android/server/people/data/Event$Builder;

    .line 171
    goto :goto_0

    .line 167
    :cond_2
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/people/data/Event$Builder;->access$400(Lcom/android/server/people/data/Event$Builder;I)Lcom/android/server/people/data/Event$Builder;

    .line 168
    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 186
    return v0

    .line 188
    :cond_0
    instance-of v1, p1, Lcom/android/server/people/data/Event;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 189
    return v2

    .line 191
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/people/data/Event;

    .line 192
    .local v1, "other":Lcom/android/server/people/data/Event;
    iget-wide v3, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    iget-wide v5, v1, Lcom/android/server/people/data/Event;->mTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/people/data/Event;->mType:I

    iget v4, v1, Lcom/android/server/people/data/Event;->mType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    iget v4, v1, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDurationSeconds()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/server/people/data/Event;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 199
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/people/data/Event;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Event {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string/jumbo v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/Event;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    if-lez v1, :cond_0

    .line 209
    const-string v1, ", durationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;

    .line 155
    iget v0, p0, Lcom/android/server/people/data/Event;->mType:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 156
    iget-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 157
    iget v0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 158
    return-void
.end method
