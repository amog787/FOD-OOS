.class Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbContract$RecoveryServiceMetadataEntry;
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
    name = "RecoveryServiceMetadataEntry"
.end annotation


# static fields
.field static final COLUMN_NAME_ACTIVE_ROOT_OF_TRUST:Ljava/lang/String; = "active_root_of_trust"

.field static final COLUMN_NAME_CERT_PATH:Ljava/lang/String; = "cert_path"

.field static final COLUMN_NAME_CERT_SERIAL:Ljava/lang/String; = "cert_serial"

.field static final COLUMN_NAME_COUNTER_ID:Ljava/lang/String; = "counter_id"

.field static final COLUMN_NAME_PUBLIC_KEY:Ljava/lang/String; = "public_key"

.field static final COLUMN_NAME_SECRET_TYPES:Ljava/lang/String; = "secret_types"

.field static final COLUMN_NAME_SERVER_PARAMS:Ljava/lang/String; = "server_params"

.field static final COLUMN_NAME_SHOULD_CREATE_SNAPSHOT:Ljava/lang/String; = "should_create_snapshot"

.field static final COLUMN_NAME_SNAPSHOT_VERSION:Ljava/lang/String; = "snapshot_version"

.field static final COLUMN_NAME_UID:Ljava/lang/String; = "uid"

.field static final COLUMN_NAME_USER_ID:Ljava/lang/String; = "user_id"

.field static final TABLE_NAME:Ljava/lang/String; = "recovery_service_metadata"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
