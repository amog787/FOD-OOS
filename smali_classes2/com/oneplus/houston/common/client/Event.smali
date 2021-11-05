.class public Lcom/oneplus/houston/common/client/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ATRT_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_EXTRA:Ljava/lang/String; = "extra"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/houston/common/client/Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/oneplus/houston/common/client/Event$1;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event$1;-><init>()V

    sput-object v0, Lcom/oneplus/houston/common/client/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "Houston_Data"

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    .line 55
    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    .line 56
    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mType:I

    .line 57
    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mName:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 61
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "flag"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "Houston_Data"

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    .line 64
    iput p1, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    .line 65
    iput p2, p0, Lcom/oneplus/houston/common/client/Event;->mType:I

    .line 66
    iput p3, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    .line 67
    iput-object p4, p0, Lcom/oneplus/houston/common/client/Event;->mName:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 70
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "Houston_Data"

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    .line 155
    invoke-virtual {p0, p1}, Lcom/oneplus/houston/common/client/Event;->readFromParcel(Landroid/os/Parcel;)V

    .line 156
    return-void
.end method

.method private getExtraString()Ljava/lang/String;
    .locals 6

    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, "size":I
    iget-object v1, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1374
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Bundle["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    iget-object v2, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1376
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1377
    iget-object v4, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1378
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 1379
    const-string v4, "NULL"

    .line 1381
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1384
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 1386
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1390
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 97
    iget v0, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    .line 98
    return-void
.end method

.method public clearFlags(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 101
    iget v0, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    .line 102
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBooleanArrayExtra(Ljava/lang/String;)[Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 912
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 912
    :goto_0
    return v0
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1316
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 929
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 930
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 929
    :goto_0
    return v0
.end method

.method public getCharArrayExtra(Ljava/lang/String;)[C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCharExtra(Ljava/lang/String;C)C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 963
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 964
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    .line 963
    :goto_0
    return v0
.end method

.method public getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1302
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDoubleArrayExtra(Ljava/lang/String;)[D
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1274
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 1031
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    .line 1032
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 1031
    :goto_0
    return-wide v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/houston/common/client/Event;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1336
    move-object v0, p2

    .line 1337
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1338
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1339
    .local v1, "result2":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1340
    move-object v0, v1

    .line 1344
    .end local v1    # "result2":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1355
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1356
    :cond_0
    const/4 v0, 0x0

    .line 1354
    :goto_0
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    return v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1260
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 1014
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 1015
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1014
    :goto_0
    return v0
.end method

.method public getId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    return v0
.end method

.method public getIntArrayExtra(Ljava/lang/String;)[I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1232
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 980
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 980
    :goto_0
    return v0
.end method

.method public getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLongArrayExtra(Ljava/lang/String;)[J
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1246
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 997
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    .line 998
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 997
    :goto_0
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getShortArrayExtra(Ljava/lang/String;)[S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1204
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getShortExtra(Ljava/lang/String;S)S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 946
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    .line 946
    :goto_0
    return v0
.end method

.method public getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1288
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1147
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/oneplus/houston/common/client/Event;->mType:I

    return v0
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 880
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/oneplus/houston/common/client/Event;"
        }
    .end annotation

    .line 540
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 544
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 202
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 206
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 226
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 230
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 346
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 350
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 322
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 326
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 274
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 298
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 302
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .line 828
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 829
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 832
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .line 418
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 564
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 568
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 394
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 398
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 250
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 254
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 179
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 612
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 616
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 660
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 664
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 756
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 757
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 760
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 732
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 736
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 684
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 688
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 708
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 712
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .line 442
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 446
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .line 804
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 808
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 784
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 636
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 640
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 588
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 592
    return-object p0
.end method

.method public putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 866
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 870
    return-object p0
.end method

.method public putExtras(Lcom/oneplus/houston/common/client/Event;)Lcom/oneplus/houston/common/client/Event;
    .locals 2
    .param p1, "src"    # Lcom/oneplus/houston/common/client/Event;

    .line 844
    iget-object v0, p1, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 845
    iget-object v1, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 846
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    goto :goto_0

    .line 848
    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 851
    :cond_1
    :goto_0
    return-object p0
.end method

.method public putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/oneplus/houston/common/client/Event;"
        }
    .end annotation

    .line 491
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 495
    return-object p0
.end method

.method public putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/oneplus/houston/common/client/Event;"
        }
    .end annotation

    .line 467
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 471
    return-object p0
.end method

.method public putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oneplus/houston/common/client/Event;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oneplus/houston/common/client/Event;"
        }
    .end annotation

    .line 515
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 519
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mType:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mName:Ljava/lang/String;

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    .line 122
    :cond_1
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 93
    iput p1, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    .line 94
    return-void
.end method

.method public setId(I)I
    .locals 0
    .param p1, "id"    # I

    .line 73
    iput p1, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    return p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/oneplus/houston/common/client/Event;->mName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 85
    iput p1, p0, Lcom/oneplus/houston/common/client/Event;->mType:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Houston_Data{mId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/common/client/Event;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    iget-object v1, p0, Lcom/oneplus/houston/common/client/Event;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/Event;->getExtraString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    iget v0, p0, Lcom/oneplus/houston/common/client/Event;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/oneplus/houston/common/client/Event;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/oneplus/houston/common/client/Event;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/houston/common/client/Event;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :goto_1
    return-void
.end method
