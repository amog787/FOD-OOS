.class public interface abstract annotation Lcom/android/server/PackageWatchdog$PackageHealthObserverImpact;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PackageHealthObserverImpact"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final USER_IMPACT_HIGH:I = 0x5

.field public static final USER_IMPACT_LOW:I = 0x1

.field public static final USER_IMPACT_MEDIUM:I = 0x3

.field public static final USER_IMPACT_NONE:I
