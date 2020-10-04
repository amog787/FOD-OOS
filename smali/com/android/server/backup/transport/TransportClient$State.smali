.class interface abstract annotation Lcom/android/server/backup/transport/TransportClient$State;
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
    name = "State"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BOUND_AND_CONNECTING:I = 0x2

.field public static final CONNECTED:I = 0x3

.field public static final IDLE:I = 0x1

.field public static final UNUSABLE:I
