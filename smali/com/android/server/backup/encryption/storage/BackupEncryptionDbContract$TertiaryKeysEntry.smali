.class Lcom/android/server/backup/encryption/storage/BackupEncryptionDbContract$TertiaryKeysEntry;
.super Ljava/lang/Object;
.source "BackupEncryptionDbContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/storage/BackupEncryptionDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TertiaryKeysEntry"
.end annotation


# static fields
.field static final COLUMN_NAME_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final COLUMN_NAME_SECONDARY_KEY_ALIAS:Ljava/lang/String; = "secondary_key_alias"

.field static final COLUMN_NAME_WRAPPED_KEY_BYTES:Ljava/lang/String; = "wrapped_key_bytes"

.field static final TABLE_NAME:Ljava/lang/String; = "tertiary_keys"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
