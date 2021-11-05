.class interface abstract annotation Lcom/android/server/backup/transport/TransportClient$Transition;
.super Ljava/lang/Object;
.source "TransportClient.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/TransportClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "Transition"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DOWN:I = -0x1

.field public static final NO_TRANSITION:I = 0x0

.field public static final UP:I = 0x1
