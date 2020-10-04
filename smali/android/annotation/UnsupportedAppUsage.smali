.class public interface abstract annotation Landroid/annotation/UnsupportedAppUsage;
.super Ljava/lang/Object;
.source "UnsupportedAppUsage.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/UnsupportedAppUsage;
        expectedSignature = ""
        implicitMember = ""
        maxTargetSdk = 0x7fffffff
        trackingBug = 0x0L
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/annotation/UnsupportedAppUsage$Container;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Landroid/annotation/UnsupportedAppUsage$Container;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract expectedSignature()Ljava/lang/String;
.end method

.method public abstract implicitMember()Ljava/lang/String;
.end method

.method public abstract maxTargetSdk()I
.end method

.method public abstract trackingBug()J
.end method
