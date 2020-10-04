.class public final Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;
.super Ljava/lang/Object;
.source "ChunkListingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/chunk/ChunkListingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private final mLength:I

.field private final mStart:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "length"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide p1, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;->mStart:J

    .line 96
    iput p3, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;->mLength:I

    .line 97
    return-void
.end method

.method synthetic constructor <init>(JILcom/android/server/backup/encryption/chunk/ChunkListingMap$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lcom/android/server/backup/encryption/chunk/ChunkListingMap$1;

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;->mLength:I

    return v0
.end method

.method public getStart()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;->mStart:J

    return-wide v0
.end method
