.class public interface abstract annotation Lcom/android/server/PackageWatchdog$HealthCheckState;
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
    name = "HealthCheckState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ACTIVE:I = 0x0

.field public static final FAILED:I = 0x3

.field public static final INACTIVE:I = 0x1

.field public static final PASSED:I = 0x2
