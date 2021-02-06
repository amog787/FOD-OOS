.class interface abstract annotation Lcom/android/server/wm/ActivityTaskManagerService$HotPath;
.super Ljava/lang/Object;
.source "ActivityTaskManagerService.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/server/wm/ActivityTaskManagerService$HotPath;
        caller = 0x0
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "HotPath"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final LRU_UPDATE:I = 0x2

.field public static final NONE:I = 0x0

.field public static final OOM_ADJUSTMENT:I = 0x1

.field public static final PROCESS_CHANGE:I = 0x3


# virtual methods
.method public abstract caller()I
.end method
