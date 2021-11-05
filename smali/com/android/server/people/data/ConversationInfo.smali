.class public Lcom/android/server/people/data/ConversationInfo;
.super Ljava/lang/Object;
.source "ConversationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/ConversationInfo$Builder;,
        Lcom/android/server/people/data/ConversationInfo$ConversationFlags;
    }
.end annotation


# static fields
.field private static final FLAG_BUBBLED:I = 0x4

.field private static final FLAG_CONTACT_STARRED:I = 0x20

.field private static final FLAG_DEMOTED:I = 0x40

.field private static final FLAG_IMPORTANT:I = 0x1

.field private static final FLAG_NOTIFICATION_SILENCED:I = 0x2

.field private static final FLAG_PERSON_BOT:I = 0x10

.field private static final FLAG_PERSON_IMPORTANT:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactPhoneNumber:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mConversationFlags:I

.field private mLocusId:Landroid/content/LocusId;

.field private mNotificationChannelId:Ljava/lang/String;

.field private mShortcutFlags:I

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/ConversationInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/people/data/ConversationInfo$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->access$000(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->access$100(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/content/LocusId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 102
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->access$200(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 103
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->access$300(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->access$400(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->access$500(Lcom/android/server/people/data/ConversationInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 106
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->access$600(Lcom/android/server/people/data/ConversationInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/ConversationInfo$Builder;Lcom/android/server/people/data/ConversationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;
    .param p2, "x1"    # Lcom/android/server/people/data/ConversationInfo$1;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/people/data/ConversationInfo;-><init>(Lcom/android/server/people/data/ConversationInfo$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo;

    .line 47
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo;

    .line 47
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/people/data/ConversationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo;

    .line 47
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/people/data/ConversationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo;

    .line 47
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo;

    .line 47
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/people/data/ConversationInfo;)Landroid/content/LocusId;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo;

    .line 47
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/people/data/ConversationInfo;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo;

    .line 47
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method private hasConversationFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 265
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasShortcutFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 261
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;
    .locals 7
    .param p0, "payload"    # [B

    .line 363
    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    .line 364
    .local v0, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 366
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 367
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "locusId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    new-instance v3, Landroid/content/LocusId;

    invoke-direct {v3, v2}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 371
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "contactUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 373
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 375
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "notificationChannelId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 377
    invoke-virtual {v0, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 379
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 380
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 381
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "contactPhoneNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 383
    invoke-virtual {v0, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v2    # "locusId":Ljava/lang/String;
    .end local v3    # "contactUri":Ljava/lang/String;
    .end local v4    # "notificationChannelId":Ljava/lang/String;
    .end local v5    # "contactPhoneNumber":Ljava/lang/String;
    :cond_3
    nop

    .line 389
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    return-object v2

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/people/data/ConversationInfo;->TAG:Ljava/lang/String;

    const-string v4, "Failed to read conversation info fields from backup payload."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    const/4 v3, 0x0

    return-object v3
.end method

.method static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/ConversationInfo;
    .locals 8
    .param p0, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    .line 315
    .local v0, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 316
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const-wide v3, 0x10900000001L

    packed-switch v1, :pswitch_data_0

    .line 354
    sget-object v1, Lcom/android/server/people/data/ConversationInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read undefined field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :pswitch_0
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 352
    goto :goto_0

    .line 346
    :pswitch_1
    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 348
    goto :goto_0

    .line 342
    :pswitch_2
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 344
    goto :goto_0

    .line 338
    :pswitch_3
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 340
    goto :goto_0

    .line 334
    :pswitch_4
    const-wide v1, 0x10900000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 336
    goto :goto_0

    .line 322
    :pswitch_5
    const-wide v5, 0x10b00000002L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 324
    .local v5, "locusIdToken":J
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 327
    new-instance v1, Landroid/content/LocusId;

    .line 328
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 332
    goto/16 :goto_0

    .line 318
    .end local v5    # "locusIdToken":J
    :pswitch_6
    nop

    .line 319
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 320
    goto/16 :goto_0

    .line 358
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 194
    return v0

    .line 196
    :cond_0
    instance-of v1, p1, Lcom/android/server/people/data/ConversationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 197
    return v2

    .line 199
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/people/data/ConversationInfo;

    .line 200
    .local v1, "other":Lcom/android/server/people/data/ConversationInfo;
    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v4, v1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 201
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 202
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 203
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 204
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v4, v1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iget v4, v1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 200
    :goto_0
    return v0
.end method

.method getBackupPayload()[B
    .locals 5

    .line 293
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 294
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 296
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 300
    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 301
    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 302
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    :cond_3
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    nop

    .line 307
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/people/data/ConversationInfo;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write fields to backup payload."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    const/4 v3, 0x0

    return-object v3
.end method

.method getContactPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method getContactUri()Landroid/net/Uri;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method getLocusId()Landroid/content/LocusId;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method getNotificationChannelId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 211
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 211
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBubbled()Z
    .locals 1

    .line 165
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v0

    return v0
.end method

.method public isContactStarred()Z
    .locals 1

    .line 188
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v0

    return v0
.end method

.method public isDemoted()Z
    .locals 1

    .line 173
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v0

    return v0
.end method

.method public isImportant()Z
    .locals 1

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v0

    return v0
.end method

.method public isNotificationSilenced()Z
    .locals 1

    .line 160
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v0

    return v0
.end method

.method public isPersonBot()Z
    .locals 1

    .line 183
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v0

    return v0
.end method

.method public isPersonImportant()Z
    .locals 1

    .line 178
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    move-result v0

    return v0
.end method

.method public isShortcutCachedForNotification()Z
    .locals 1

    .line 150
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    move-result v0

    return v0
.end method

.method public isShortcutLongLived()Z
    .locals 1

    .line 142
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ConversationInfo {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string/jumbo v1, "shortcutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", contactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", notificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, ", shortcutFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isShortcutLongLived()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const-string v2, "Liv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const-string v2, "Cac"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v2, ", conversationFlags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isImportant()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    const-string v1, "Imp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isNotificationSilenced()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    const-string v1, "Sil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isBubbled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    const-string v1, "Bub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isDemoted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    const-string v1, "Dem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isPersonImportant()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 248
    const-string v1, "PIm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isPersonBot()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 251
    const-string v1, "Bot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->isContactStarred()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 254
    const-string v1, "Sta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_8
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;

    .line 270
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    if-eqz v0, :cond_0

    .line 272
    const-wide v3, 0x10b00000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 273
    .local v3, "locusIdToken":J
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 274
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 276
    .end local v3    # "locusIdToken":J
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 277
    const-wide v1, 0x10900000003L

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 280
    const-wide v1, 0x10900000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 283
    :cond_2
    const-wide v0, 0x10500000005L

    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 284
    const-wide v0, 0x10500000006L

    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 285
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 286
    const-wide v1, 0x10900000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 289
    :cond_3
    return-void
.end method
