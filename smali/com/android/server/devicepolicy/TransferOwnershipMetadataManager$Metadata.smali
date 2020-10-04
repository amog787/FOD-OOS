.class Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
.super Ljava/lang/Object;
.source "TransferOwnershipMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metadata"
.end annotation


# instance fields
.field final adminType:Ljava/lang/String;

.field final sourceComponent:Landroid/content/ComponentName;

.field final targetComponent:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 0
    .param p1, "sourceComponent"    # Landroid/content/ComponentName;
    .param p2, "targetComponent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "adminType"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 187
    iput-object p2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 188
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 191
    iput p3, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    .line 192
    iput-object p4, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    .line 193
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "flatSourceComponent"    # Ljava/lang/String;
    .param p2, "flatTargetComponent"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "adminType"    # Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->unflattenComponentUnchecked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 198
    invoke-static {p2}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->unflattenComponentUnchecked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 197
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method private static unflattenComponentUnchecked(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "flatComponent"    # Ljava/lang/String;

    .line 202
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    instance-of v0, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 209
    return v1

    .line 211
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    .line 213
    .local v0, "params":Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    iget v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    iget v3, v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 214
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 215
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    .line 216
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 213
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 221
    const/4 v0, 0x1

    .line 222
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    add-int/2addr v1, v2

    .line 223
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 224
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 225
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 226
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method
