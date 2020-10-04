.class Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbContract$RootOfTrustEntry;
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
    name = "RootOfTrustEntry"
.end annotation


# static fields
.field static final COLUMN_NAME_CERT_PATH:Ljava/lang/String; = "cert_path"

.field static final COLUMN_NAME_CERT_SERIAL:Ljava/lang/String; = "cert_serial"

.field static final COLUMN_NAME_ROOT_ALIAS:Ljava/lang/String; = "root_alias"

.field static final COLUMN_NAME_UID:Ljava/lang/String; = "uid"

.field static final COLUMN_NAME_USER_ID:Ljava/lang/String; = "user_id"

.field static final TABLE_NAME:Ljava/lang/String; = "root_of_trust"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
