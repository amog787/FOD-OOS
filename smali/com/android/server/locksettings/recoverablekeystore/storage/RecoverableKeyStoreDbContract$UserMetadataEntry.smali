.class Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbContract$UserMetadataEntry;
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
    name = "UserMetadataEntry"
.end annotation


# static fields
.field static final COLUMN_NAME_PLATFORM_KEY_GENERATION_ID:Ljava/lang/String; = "platform_key_generation_id"

.field static final COLUMN_NAME_USER_ID:Ljava/lang/String; = "user_id"

.field static final COLUMN_NAME_USER_SERIAL_NUMBER:Ljava/lang/String; = "user_serial_number"

.field static final TABLE_NAME:Ljava/lang/String; = "user_metadata"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
