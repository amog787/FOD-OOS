.class interface abstract annotation Lcom/android/server/backup/remote/RemoteResult$Type;
.super Ljava/lang/Object;
.source "RemoteResult.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/remote/RemoteResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "Type"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FAILED_CANCELLED:I = 0x2

.field public static final FAILED_THREAD_INTERRUPTED:I = 0x3

.field public static final FAILED_TIMED_OUT:I = 0x1

.field public static final SUCCESS:I
