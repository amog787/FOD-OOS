.class public abstract Lcom/android/server/accessibility/BaseEventStreamTransformation;
.super Ljava/lang/Object;
.source "BaseEventStreamTransformation.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# instance fields
.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object v0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 24
    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 25
    return-void
.end method
