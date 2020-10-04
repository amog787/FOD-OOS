.class public interface abstract annotation Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey$Status;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreSecondaryKey.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation


# static fields
.field public static final DESTROYED:I = 0x3

.field public static final NOT_SYNCED:I = 0x1

.field public static final SYNCED:I = 0x2
