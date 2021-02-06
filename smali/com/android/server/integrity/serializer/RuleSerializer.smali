.class public interface abstract Lcom/android/server/integrity/serializer/RuleSerializer;
.super Ljava/lang/Object;
.source "RuleSerializer.java"


# virtual methods
.method public abstract serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/OutputStream;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/util/List;Ljava/util/Optional;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation
.end method
