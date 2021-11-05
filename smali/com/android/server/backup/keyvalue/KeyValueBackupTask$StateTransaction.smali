.class interface abstract annotation Lcom/android/server/backup/keyvalue/KeyValueBackupTask$StateTransaction;
.super Ljava/lang/Object;
.source "KeyValueBackupTask.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "StateTransaction"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COMMIT_NEW:I = 0x0

.field public static final DISCARD_ALL:I = 0x2

.field public static final DISCARD_NEW:I = 0x1
