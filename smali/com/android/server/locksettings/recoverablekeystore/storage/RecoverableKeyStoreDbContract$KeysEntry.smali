.class Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbContract$KeysEntry;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreDbContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeysEntry"
.end annotation


# static fields
.field static final COLUMN_NAME_ALIAS:Ljava/lang/String; = "alias"

.field static final COLUMN_NAME_GENERATION_ID:Ljava/lang/String; = "platform_key_generation_id"

.field static final COLUMN_NAME_KEY_METADATA:Ljava/lang/String; = "key_metadata"

.field static final COLUMN_NAME_LAST_SYNCED_AT:Ljava/lang/String; = "last_synced_at"

.field static final COLUMN_NAME_NONCE:Ljava/lang/String; = "nonce"

.field static final COLUMN_NAME_RECOVERY_STATUS:Ljava/lang/String; = "recovery_status"

.field static final COLUMN_NAME_UID:Ljava/lang/String; = "uid"

.field static final COLUMN_NAME_USER_ID:Ljava/lang/String; = "user_id"

.field static final COLUMN_NAME_WRAPPED_KEY:Ljava/lang/String; = "wrapped_key"

.field static final TABLE_NAME:Ljava/lang/String; = "keys"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
